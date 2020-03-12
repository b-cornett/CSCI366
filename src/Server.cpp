//    Battleship game assignment for MSU CSCI 366
//    Copyright (C) 2020    Mike P. Wittie
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <https://www.gnu.org/licenses/>.


#include "common.hpp"
#include "Server.hpp"
#include <fstream>
#include<iostream>


/**
 * Calculate the length of a file (helper function)
 *
 * @param file - the file whose length we want to query
 * @return length of the file in bytes
 */
int get_file_length(ifstream *file){
    file->seekg(0, ios::end);
    int length = file->tellg();
    file->seekg(0, ios::beg);
    return length;
}


void Server::initialize(unsigned int board_size,
                        string p1_setup_board,
                        string p2_setup_board){
    this->board_size = board_size;
    this->p1_setup_board = ifstream(p1_setup_board);
    this->p2_setup_board = ifstream(p2_setup_board);
    if(this->p1_setup_board.good() == false){
        throw invalid_argument("Invalid board for P1");
    }
    if(this->p2_setup_board.good() == false){
        throw invalid_argument("Invalid board for P2");
    }
    if(get_file_length(&this->p1_setup_board)/10-1 != board_size){
        throw invalid_argument("Invalid Board Size for player 1.");
    }
    if(get_file_length(&this->p2_setup_board)/10-1 != board_size){
        throw invalid_argument("Invalid Board Size for player 2.");
    }
}


int Server::evaluate_shot(unsigned int player, unsigned int x, unsigned int y) {
    if(player > 2 or player < 1){
        throw invalid_argument("Invalid player Number");
    }
    if(x > this->board_size-1 || x < 0){
        return OUT_OF_BOUNDS;
    }
    else if( y > this->board_size-1 || y < 0){
        return OUT_OF_BOUNDS;
    }else {
        vector<vector<char> > setup_board_vec;
        vector<char> line;
        std::string str;
        if (player == 1) {
            while (std::getline(this->p2_setup_board, str)) {
                vector<char> line;
                for (int i = 0; i < str.length(); i++) {
                    line.push_back(str[i]);
                }
                setup_board_vec.push_back(line);
            }
        }else {
            while (std::getline(this->p1_setup_board, str)) {
                vector<char> line;
                for (int i = 0; i < str.length(); i++) {
                    line.push_back(str[i]);
                }
                setup_board_vec.push_back(line);
            }
        }
        if (setup_board_vec[y][x] == '_') {
            return MISS;
        } else {
            return HIT;
        }
    }
}


int Server::process_shot(unsigned int player) {
    if(player > 2 or player < 1){
        throw invalid_argument("Invalid player number");
    }
    string fileToRead = "player_"+to_string(player)+".shot.json";
    string fileToWrite = "player_"+to_string(player)+".result.json";
    int x, y, result;
    ifstream ifp(fileToRead);
    if(ifp.good()) {
        cereal::JSONInputArchive read_archive(ifp);
        read_archive(x, y);
        ifp.close();
        remove(fileToRead.c_str());
        result = evaluate_shot(player, x, y);
        ofstream ofp(fileToWrite);
        cereal::JSONOutputArchive write_archive(ofp);
        write_archive(cereal::make_nvp("result", result));
        return SHOT_FILE_PROCESSED;
    }else {
        return NO_SHOT_FILE;
    }
}

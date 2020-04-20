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
#include "Client.hpp"

Client::~Client() {
}


void Client::initialize(unsigned int player, unsigned int board_size){
    this->player = player;
    this->board_size = board_size;
    this->board_name = "player_"+to_string(this->player)+".action_board.json";
    vector< vector< int > > board;
    vector< int > line;
    for(int i = 0; i < board_size; i++){
        line.push_back(0);
    }
    for(int i = 0; i < board_size; i++){
        board.push_back(line);
    }
    remove(board_name.c_str());
    ofstream ofp(board_name);
    cereal::JSONOutputArchive write_archive(ofp);
    write_archive(cereal::make_nvp("board", board));
    this->initialized = true;
}


void Client::fire(unsigned int x, unsigned int y) {
    string shotFileName = "player_"+to_string(this->player)+".shot.json";
    remove(shotFileName.c_str());
    ofstream ofp(shotFileName);
    cereal::JSONOutputArchive write_archive(ofp);
    write_archive(CEREAL_NVP(x),CEREAL_NVP(y));
}


bool Client::result_available() {
    string fileName = "player_"+to_string(this->player)+".result.json";
    std::ifstream ifile(fileName);
    return ifile.good();
}


int Client::get_result() {
    string fileToRead = "player_"+to_string(this->player)+".result.json";
    int result;
    ifstream ifp(fileToRead);
    cereal::JSONInputArchive read_archive(ifp);
    read_archive(result);
    ifp.close();
    if(result > 1 or result < -1){
        throw invalid_argument("Invalid Result File");
    }
    remove(fileToRead.c_str());
    return result;
}



void Client::update_action_board(int result, unsigned int x, unsigned int y) {
    string fileToUse = "player_"+to_string(this->player)+".action_board.json";
    vector < vector < int > > board;
    ifstream ifp(fileToUse);
    cereal::JSONInputArchive read_archive(ifp);
    read_archive(board);
    ifp.close();
    remove(fileToUse.c_str());
    board[y][x] = result;
    ofstream ofp(fileToUse);
    cereal::JSONOutputArchive write_archive(ofp);
    write_archive(CEREAL_NVP(board));
}


string Client::render_action_board(){
    string fileToRead = "player_"+to_string(this->player)+".action_board.json";
    vector< vector < int > > board;
    string finalString = NULL;
    ifstream ifp(fileToRead);
    cereal::JSONInputArchive read_archive(ifp);
    read_archive(board);
    ifp.close();
    for(int i = 0; i < board.size(); i++){
        for(int j = 0; j < board.size(); j++) {
            finalString = finalString + to_string(board[i][j]);
        }
        finalString = finalString + "\n";
    }
    return finalString;
}
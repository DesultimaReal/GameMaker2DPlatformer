///scr_string_copy_words(string, index, count);
var str = argument0;
var index = argument1;
var count = ceil(argument2); //always rounds up

var char = string_char_at(str, count);
while (char != " " && char != ""){ //Copies whole words
    count++; //If we are in the middle of the word we add to count until not in middle of the word
    char = string_char_at(str, count); //update char
}

var return_str = string_copy(str, index, count);
return return_str;

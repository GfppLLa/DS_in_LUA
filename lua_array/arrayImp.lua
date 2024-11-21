--[[
implementation file of array in lua, basically a class
    instructions:
                read a word and put in an array table
                use n numbers of letter arrangment 
                where n is the number of letter in the original word
                n  number of new words 
                print all
--]]
local metaT={
    __newindex=function(table, key, value)
        
            rawset(table,key, value)
    end
}
--[[
newWords
receives the table with the word tokenized
rearange into new words with n numbers of the tolkken
1 = the plain word
2=the index of indexes 
3 and beyond= the words
--]]
local function newWords(tableWord, size)
    
    for i=2, size do    --run the lines
        for ii=1, size do--run the collumns
            tableWord[i][ii]= 0;--initialize the array index
             ::continue::
            local randomNumber= math.random(size)--get a random number
                for iii = 1, ii do--to run the line auntil that point
                   
                    if randomNumber==tableWord[i][iii] then--if find the number means its already taken and should redo the randon
                        goto continue;
                    else
                        tableWord[i][ii]=randomNumber;
                        break;
                    end
                    
                end
        end
    end
end

local function main()
    io.write("say: ");
    local originalWord=io.read("*l");
    local tableWord={};
    local size=0;
    setmetatable(tableWord,metaT);
    for i=1, #originalWord do
        tableWord[1][i]= " ";
        tableWord[1][i]=string.sub(originalWord, i, i);
        size=size+1;
    end
    newWords(tableWord);

    --todo; read the word, alocate into and 1d table using newindex
    --next: make the operation to create the new words and allocate in the 2d table

end

main();
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
            if rawget(table, key)==nil then 
                rawset(table,key, {})
            end
            rawset(table[key], #table[key]+1, value );
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
local function printWords(tableWord, size)
    for i=2, size+1 do
        for ii=1, size do
           io.write(tableWord[1][tableWord[i][ii]]); 
        end
        io.write("\n");
    end
end
local function newWords(tableWord, size)
    
    for i=2, size+1 do    --run the lines
        tableWord[i]={};
        for ii=1, size do--run the collumns
            
            tableWord[i][ii]= 0;--initialize the array index
             ::continue::
            local randomNumber= math.random(size)--get a random number
                for iii = 1, ii-1 do--to run the line until that point
                   
                    if randomNumber==tableWord[i][iii] then--if find the number means its already taken and should redo the randon
                        goto continue;;
                    end
                    
                end
                tableWord[i][ii]=randomNumber;
        end
    end
end

local function main()
    --io.write("say: ");
    --local originalWord=io.read("*l");
    local tableWord={};
    local size=0;
    setmetatable(tableWord,metaT);
    if #arg<=0 then
        os.exit(1);
    end
    tableWord[1]={};
    for i=1, #arg[1] do
     --   tableWord[1][i]= 'n';
        tableWord[1][i]=string.sub(arg[1], i, i);
        size=size+1;
    end
    newWords(tableWord, size);
    printWords(tableWord,size);

    --todo; read the word, alocate into and 1d table using newindex
    --next: make the operation to create the new words and allocate in the 2d table

end

main();
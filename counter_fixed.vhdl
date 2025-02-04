```vhdl
entity counter is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : out  INTEGER range 0 to 15;
           overflow : out STD_LOGIC);
end entity;

architecture behavioral of counter is
    signal internal_count : INTEGER range 0 to 15 := 0;
    signal overflow_flag : STD_LOGIC := '0';
begin
    process (clk, rst)
    begin
        if rst = '1' then
            internal_count <= 0;
            overflow_flag <= '0';
        elsif rising_edge(clk) then
            if internal_count = 15 then
                overflow_flag <= '1';
                internal_count <= 0;
            else
                internal_count <= internal_count + 1;
                overflow_flag <= '0';
            end if;
        end if;
    end process;
    count <= internal_count;
    overflow <= overflow_flag;
end architecture;
```
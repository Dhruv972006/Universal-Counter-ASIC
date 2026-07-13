module universal_counter
#(
    parameter WIDTH = 4
)
(
    input  wire                  clk,
    input  wire                  reset,
    input  wire                  enable,
    input  wire                  load,
    input  wire                  up_down,
    input  wire [WIDTH-1:0]      load_data,

    output reg  [WIDTH-1:0]      count,
    output reg                   overflow,
    output reg                   underflow,
    output wire                  terminal_count
);

assign terminal_count =
       (up_down) ? (count == {WIDTH{1'b1}})
                 : (count == {WIDTH{1'b0}});

always @(posedge clk)
begin

    overflow  <= 1'b0;
    underflow <= 1'b0;

    if(reset)
    begin
        count <= {WIDTH{1'b0}};
    end

    else if(load)
    begin
        count <= load_data;
    end

    else if(enable)
    begin

        if(up_down)
        begin

            if(count == {WIDTH{1'b1}})
            begin
                count <= {WIDTH{1'b0}};
                overflow <= 1'b1;
            end

            else
            begin
                count <= count + 1'b1;
            end

        end

        else
        begin

            if(count == {WIDTH{1'b0}})
            begin
                count <= {WIDTH{1'b1}};
                underflow <= 1'b1;
            end

            else
            begin
                count <= count - 1'b1;
            end

        end

    end

end

endmodule

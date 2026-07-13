`timescale 1ns/1ps

module counter_tb;

parameter WIDTH = 4;

reg clk;
reg reset;
reg enable;
reg load;
reg up_down;
reg [WIDTH-1:0] load_data;

wire [WIDTH-1:0] count;
wire overflow;
wire underflow;
wire terminal_count;

universal_counter #(
    .WIDTH(WIDTH)
) DUT (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .load(load),
    .up_down(up_down),
    .load_data(load_data),
    .count(count),
    .overflow(overflow),
    .underflow(underflow),
    .terminal_count(terminal_count)
);

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Monitor
initial begin
    $monitor("Time=%0t | Reset=%b Enable=%b Load=%b Up=%b LoadData=%d Count=%d Overflow=%b Underflow=%b TC=%b",
             $time, reset, enable, load, up_down, load_data,
             count, overflow, underflow, terminal_count);
end

// Stimulus
initial begin
$dumpfile("counter.vcd");
$dumpvars(0, counter_tb);
    reset = 1;
    enable = 0;
    load = 0;
    up_down = 1;
    load_data = 0;

    #20;

    reset = 0;

    // -----------------------
    // Test 1 : Up Counter
    // -----------------------
    enable = 1;
    up_down = 1;
    #80;

    // -----------------------
    // Test 2 : Load Value
    // -----------------------
    load = 1;
    load_data = 10;
    #10;
    load = 0;
    #50;

    // -----------------------
    // Test 3 : Down Counter
    // -----------------------
    up_down = 0;
    #120;

    // -----------------------
    // Test 4 : Disable Counter
    // -----------------------
    enable = 0;
    #30;

    // -----------------------
    // Test 5 : Enable Again
    // -----------------------
    enable = 1;
    up_down = 1;
    #80;

    $finish;

end

endmodule


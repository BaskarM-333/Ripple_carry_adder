module RCA (input [3:0]a,[3:0]b,cin,[3:0]sum,carry);
  wire w1,w2,w3;
  fulladder fa0(.a(a[0]),.b(b[0]),cin(cin),.sum(sum[0]),.carry(w1));
  fulladder fa1(.a(a[1]),.b(b[1]),.cin(w1),.sum(sum[0]),.carry(w2));
  fulladder fa2(.a(a[2]),.b(b[2]),.cin(w2),.sum(sum[2]),.carry(w3));
  fulladder fa3(.a(a[3]),.b(b[2]),.cin(w3),.sum(sum[3]),.carry(carry));
endmodule
module fulladder(input a,b,cin,output sum,carry);
  assign sum=a^b^cin;
  assign carry=(a&b)|(b&cin)|(cin&a);
endmodule


class ComplexNum
    attr_accessor  :imag ,:real
        @imag
        @real
        @@count = {
            :bulk_add=> 0,
            :bulk_multiply=> 0
        }

    def initialize(real,imag)
        @real = real
        @imag = imag
        @imagPart = 0
        @realPart=0

		end 
    def + (cn2)
        @imagPart= @imag + cn2.imag
        @realPart= @real + cn2.real
        puts ("Sum Equals  #{@realPart}+ #{@imagPart} i")

    end

    def * (cn2)
        comp = ComplexNum.new(1,1)
        @imagPart= (@real * cn2.imag) + (@imag * cn2.real) 
        @realPart= (@real * cn2.real)- (@imag * cn2.imag )
        comp.real = @realPart
        comp.imag =@imagPart
    puts ("Multiply Equals  #{@realPart} + #{@imagPart} i")        
        return comp
    end


    def self.bulk_add(cns)
        @@count[:bulk_add] +=1
        @imagPart=0
        @realPart=0
        cns.each do |c|
            @imagPart +=   c.imag 
            @realPart +=   c.real
        end
    puts ("Adds Equals  #{@realPart} + #{@imagPart} i")
    # cns.inject(:+)
    end


    def self.bulk_Multiply(cns)
    @@count[:bulk_multiply] +=1
        comp = ComplexNum.new(1,0)
        cns.each do |c|
 
            comp = comp * c
        
    end

    # cns.inject(:*)
     end

    def self.gets_stats()
       puts @@count 

    end
end

cn1 = ComplexNum.new(3,2)
cn2 = ComplexNum.new(1,7)
# cn3 = ComplexNum.new(7,9)
cns = Array.[](cn1,cn2)
ComplexNum.bulk_add(cns)
ComplexNum.bulk_Multiply(cns)
 cn1 + cn2
 cn1 * cn2
 ComplexNum.bulk_add(cns)
 ComplexNum.gets_stats



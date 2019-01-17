require 'first_tdd'
require 'rspec'

    describe "#remove_dups" do
        it "should remove duplicate elements" do 
            expect(remove_dups([1, 2, 1, 3, 3])).to eq([1,2,3])
        end
    end

    RSpec.describe Array do
        describe "#two_sum" do
            it "returns all index pair that equal 0 in a nested array" do
                expect([-1, 0, 2, -2, 1].two_sum ).to eq ([[0, 4], [2, 3]])
            end
        end 
    end

    describe "#my_transpose" do
        it "should switch columns and rows" do
            expect(my_transpose([
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
              ])).to eq([[0, 3, 6],
              [1, 4, 7],
              [2, 5, 8]])
        end
    end

    describe "#stock_picker" do
        it "should return array with biggest gain days" do
            expect(stock_picker([2, 4, 3, 7])).to eq([0, 3])
        end
    end

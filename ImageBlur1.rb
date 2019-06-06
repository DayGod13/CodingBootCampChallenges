class Image
    attr_accessor :image

    def initialize array
        @image = array
    end

    def output_image
        # puts self
        # @image.each do |i|
        #     puts i

        @image.each do |row|
            row.each do |col|
                print col.to_s + ""
            end
            puts
        end
    #end
end

end

image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
  ])

image.output_image
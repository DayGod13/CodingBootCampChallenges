class Image
    attr_accessor :image

    def initialize array
        @image = array
    end

    def output_image
        @image.each do |row|
          puts row.join
        end
    end

    def blur # (distance=1)
        # distance.times do
          blur_cords
        # end
    end

    private 

    def blur_cords
        blur_cords = []
        @image.each_with_index do |row, i|
            row.each_with_index do |x, row_i|
                blur_cords << [i, row_i] if x == 1
            end
        end

        blur_cords.each do |cord|
            @image[cord[0]][cord[1] + 1] = 1 if cord[1] + 1 <= @image[cord[0]].length - 1
            @image[cord[0]][cord[1] - 1] = 1 if cord[1] - 1 >= 0
            @image[cord[0] + 1][cord[1]] = 1 if cord[0] + 1 <= @image.length - 1
            @image[cord[0] - 1][cord[1]] = 1 if cord[0] - 1 >= 0
        end
    end

end

image = Image.new([
    [0, 0, 0, 0, 1],
    [0, 1, 0, 0, 0],
    [0, 0, 0, 1, 0],
    [0, 0, 0, 0, 0]
  ])

image.blur
image.output_image
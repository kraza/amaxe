class HeaderFooter < ActiveRecord::Base
#    def self.save(upload)
#        name = upload['datafile'].original_filename
#        directory = "public/images"
#        # create the file path
#        path = File.join(directory, name)
#        file.open(path, "wb"){|f| f.write(upload['datafile'].read)}
#    end
#    
#    validates_format_of :content_type, :with => /^image/, :message => "--- you can only upload pictures"
    def uploaded_picture=(picture_field)
        self.logo         = base_part_of(picture_field.original_filename)
        #self.t2 = picture_field.t2.chomp
        self.fdata         = picture_field.read
    end
    
#    def logo1=(picture_field)
#        self.logo         = base_part_of(picture_field.original_filename)
#        #self.t2 = picture_field.t2.chomp
#        self.fdata         = picture_field.read
#    end
#    
    def uploaded_picture1=(picture_field1)
        self.header         = base_part_of(picture_field1.original_filename)
        #self.t2 = picture_field.t2.chomp
        self.hdata         = picture_field1.read
    end
#    
    def uploaded_picture2=(picture_field)
        self.t1         = base_part_of(picture_field.original_filename)
        #self.t2 = picture_field.t2.chomp
        self.td1         = picture_field.read
    end
    
    def uploaded_picture3=(picture_field)
        self.t2         = base_part_of(picture_field.original_filename)
        #self.t2 = picture_field.t2.chomp
        self.td2         = picture_field.read
    end
    
    def uploaded_picture4=(picture_field)
        self.t3         = base_part_of(picture_field.original_filename)
        #self.t2 = picture_field.t2.chomp
        self.td3         = picture_field.read
    end
    
    def uploaded_picture5=(picture_field)
        self.b1         = base_part_of(picture_field.original_filename)
        #self.t2 = picture_field.t2.chomp
        self.bd1         = picture_field.read
    end
    
    def uploaded_picture6=(picture_field)
        self.b2         = base_part_of(picture_field.original_filename)
        #self.t2 = picture_field.t2.chomp
        self.bd2         = picture_field.read
    end
    
    def uploaded_picture7=(picture_field)
        self.b3         = base_part_of(picture_field.original_filename)
        #self.t2 = picture_field.t2.chomp
        self.bd3         = picture_field.read
    end
    def base_part_of(file_name)
        File.basename(file_name).gsub(/[^\w._-]/, '' )
    end

end

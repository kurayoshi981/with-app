module PostHelper
    def sex_name
        if @post.sex == 1
            '男性'
        else
            '女性'
        end
    end 
end

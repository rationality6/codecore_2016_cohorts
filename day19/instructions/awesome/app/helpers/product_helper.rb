module ProductHelper
    @@page_size = 10

    def get_page(activerecord, page = 0)
        activerecord.offset(page.to_i * @@page_size).limit(@@page_size)
    end

    def get_num_pages(activerecord)
        activerecord.count / @@page_size
    end
end

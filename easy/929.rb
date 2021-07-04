# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
    hash = {}
    for i in 0...emails.length
       e = emails[i]
        tmp = e.split("@")
        local = tmp[0]
        domain = tmp[1]
        tmpSplit = local.split("+")
        left = tmpSplit[0].split(".").join
        
        email = left + "@" + domain
        if !hash[email]
            hash[email] = 1
        end
        
    end
    
    return hash.length
end

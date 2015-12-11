module ComplimentsHelper
  def parseCompliments(data)
    data.scan(/([0-9]+[\/][0-9]+[\/][0-9]{4}|[0-9]+[\/][0-9]+[\/][0-9]{2})[\t ]+([0-9]+)[\t ]+([a-zA-Z ]+)/) do
      if $3.present?
        if $3.include?(", ")
          driver_name = $3.split(", ").reverse.join(" ")
        elsif $3.include?(",")
          driver_name = $3.split(",").reverse.join(" ")
        else
          driver_name = $3
        end
      end
      Compliment.create(call_number: $2 , date: $1, driver: driver_name)
    end
  end
end

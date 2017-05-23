class ClickbaitValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless !value.nil? && ( value.match(/Won't Believe/) || value.match(/Secret/) || value.match(/Top \d+/) || value.match(/Guess/) )
      record.errors[attribute] << (options[:message] || "is not clickbait")
    end
  end
end

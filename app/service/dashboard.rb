class Dashboard
  def total_names
    Name.distinct.count('name')
  end

  def total_female_names
    Name.female.distinct.count('name')
  end

  def total_male_names
    Name.male.distinct.count('name')
  end
end

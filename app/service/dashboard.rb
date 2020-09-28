class Dashboard
  def latest_year
    Name.latest.limit(1).first.year
  end

  def total_names
    Name.distinct.count('name')
  end

  def total_female_names
    Name.female.distinct.count('name')
  end

  def total_male_names
    Name.male.distinct.count('name')
  end

  def top_ten_female_names_latest_year
    Name.latest.female.order(rank: :asc).limit(10)
  end

  def top_ten_male_names_latest_year
    Name.latest.male.order(rank: :asc).limit(10)
  end
end

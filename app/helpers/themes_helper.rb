module ThemesHelper
  def ipsum_shuffle
    ((@theme.keywords * @theme.percentage) + (@example * (100 - @theme.percentage))).split.shuffle[1..100].join(" ")
    # @custom = (@theme.info * 5).split.shuffle[1..100].join(" ")
    # @lorem  = (@example * 5).split.shuffle[1..100].join(" ")
    # @theme.info * (@theme.percentage.to_f/100)
    # (@theme.info * (@theme.percentage.to_f/100) ) + @example.split.shuffle[1..100].join(" ")
  end
end

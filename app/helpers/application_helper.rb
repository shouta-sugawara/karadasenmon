module ApplicationHelper
  def set_title_description
    c = params[:controller]
    a = params[:action]
    h = {}

    if c.include?("niconico")
      h = {
        "niconico/welcome" => {
          "index" => Proc.new{ return ["にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院のホームページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "diagnosis" => Proc.new{ return ["診療案内 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の診療案内ページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "traffic_accident" => Proc.new{ return ["交通事故治療 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の採用情報ページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "recruitment" => Proc.new{ return ["採用情報 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院のホームページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "about" => Proc.new{ return ["当院のご案内 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院のホームページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "bruise" => Proc.new{ return ["捻挫・打撲 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の捻挫・打撲に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "muscle" => Proc.new{ return ["肉離れ - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の肉離れに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "sleeping" => Proc.new{ return ["寝違え - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の寝違えに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "lumbago" => Proc.new{ return ["腰痛 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の腰痛に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "pain_shoulder" => Proc.new{ return ["五十肩 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の五十肩に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "knee_pain" => Proc.new{ return ["ひざ痛 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院のひざ痛に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "back_pain" => Proc.new{ return ["ギックリ腰 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院のギックリ腰に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "stiff_shoulder" => Proc.new{ return ["肩こり - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の肩こりに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "tenosynovitis" => Proc.new{ return ["腱鞘炎 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の腱鞘炎に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "hallux_valgus" => Proc.new{ return ["外反母趾 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の外反母趾に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "flat_foot" => Proc.new{ return ["扁平足 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の扁平足に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "posture" => Proc.new{ return ["姿勢の崩れ - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の姿勢の崩れに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
        },
        "niconico/blogs" => {
          "index" => Proc.new{ return ["ブログ一覧 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院のブログ一覧です。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "show" => Proc.new {return ["#{Blog.find_by(id: params[:id]).try(:title)} - にこにこ整骨院", "#{"にこにこ整骨院ブログ | 秋田県大仙市の整骨院グループ" + strip_tags(Blog.find_by(id: params[:id]).try(:content))[0, 39] + "..."}"]}
        },
        "niconico/reviews" => {
          "index" => Proc.new{ return ["患者様の声一覧 - にこにこ整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の患者様の声一覧です。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "show" => Proc.new {return ["#{Review.find_by(id: params[:id]).try(:title)} - にこにこ整骨院", "#{"にこにこ整骨院ブログ | 秋田県大仙市の整骨院グループ" + strip_tags(Review.find_by(id: params[:id]).try(:content))[0, 39] + "..."}"]}
        },
        "niconico/notifications" => {
          "show" => Proc.new {return ["お知らせ - にこにこ整骨院", "#{Notification.find_by(id: params[:id]).try(:title)} - 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ整骨院の患者様の声一覧です。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]}
        }
      }
    elsif c.include?("sugawara")
      h = {
        "sugawara/welcome" => {
          "index" => Proc.new{ return ["すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院のホームページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "diagnosis" => Proc.new{ return ["診療案内 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の診療案内ページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "traffic_accident" => Proc.new{ return ["交通事故治療 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の採用情報ページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "recruitment" => Proc.new{ return ["採用情報 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院のホームページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "about" => Proc.new{ return ["当院のご案内 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院のホームページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "bruise" => Proc.new{ return ["捻挫・打撲 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の捻挫・打撲に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "muscle" => Proc.new{ return ["肉離れ - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の肉離れに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "sleeping" => Proc.new{ return ["寝違え - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の寝違えに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "lumbago" => Proc.new{ return ["腰痛 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の腰痛に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "pain_shoulder" => Proc.new{ return ["五十肩 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の五十肩に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "knee_pain" => Proc.new{ return ["ひざ痛 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院のひざ痛に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "back_pain" => Proc.new{ return ["ギックリ腰 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院のギックリ腰に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "stiff_shoulder" => Proc.new{ return ["肩こり - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の肩こりに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "tenosynovitis" => Proc.new{ return ["腱鞘炎 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の腱鞘炎に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "hallux_valgus" => Proc.new{ return ["外反母趾 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の外反母趾に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "flat_foot" => Proc.new{ return ["扁平足 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の扁平足に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "posture" => Proc.new{ return ["姿勢の崩れ - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の姿勢の崩れに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
        },
        "sugawara/blogs" => {
          "index" => Proc.new{ return ["ブログ一覧 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院のブログ一覧です。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "show" => Proc.new {return ["#{Blog.find_by(id: params[:id]).try(:title)} - すがわら整骨院", "#{"すがわら整骨院ブログ | 秋田県大仙市の整骨院グループ" + strip_tags(Blog.find_by(id: params[:id]).try(:content))[0, 39] + "..."}"]}
        },
        "sugawara/reviews" => {
          "index" => Proc.new{ return ["患者様の声一覧 - すがわら整骨院 | 秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の患者様の声一覧です。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "show" => Proc.new {return ["#{Review.find_by(id: params[:id]).try(:title)} - すがわら整骨院", "#{"すがわら整骨院ブログ | 秋田県大仙市の整骨院グループ" + strip_tags(Review.find_by(id: params[:id]).try(:content))[0, 39] + "..."}"]}
        },
        "sugawara/notifications" => {
          "show" => Proc.new {return ["お知らせ - すがわら整骨院", "#{Notification.find_by(id: params[:id]).try(:title)} - 秋田県秋田市・大仙市で交通事故・腰痛・怪我に対応できる整骨院、すがわら整骨院の患者様の声一覧です。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]}
        }
      }
    else
      h = {
        "welcome" => {
          "index" => Proc.new{ return ["にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院のホームページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "diagnosis" => Proc.new{ return ["診療案内 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の診療案内ページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "traffic_accident" => Proc.new{ return ["交通事故治療 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の採用情報ページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "recruitment" => Proc.new{ return ["採用情報 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院のホームページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "about" => Proc.new{ return ["当院のご案内 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院のホームページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "bruise" => Proc.new{ return ["捻挫・打撲 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の捻挫・打撲に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "muscle" => Proc.new{ return ["肉離れ - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の肉離れに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "sleeping" => Proc.new{ return ["寝違え - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の寝違えに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "lumbago" => Proc.new{ return ["腰痛 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の腰痛に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "pain_shoulder" => Proc.new{ return ["五十肩 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の五十肩に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "knee_pain" => Proc.new{ return ["ひざ痛 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院のひざ痛に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "back_pain" => Proc.new{ return ["ギックリ腰 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院のギックリ腰に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "stiff_shoulder" => Proc.new{ return ["肩こり - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の肩こりに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "tenosynovitis" => Proc.new{ return ["腱鞘炎 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の腱鞘炎に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "hallux_valgus" => Proc.new{ return ["外反母趾 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の外反母趾に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "flat_foot" => Proc.new{ return ["扁平足 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の扁平足に関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "posture" => Proc.new{ return ["姿勢の崩れ - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の姿勢の崩れに関するページです。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
        },
        "blogs" => {
          "index" => Proc.new{ return ["ブログ一覧 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院のブログ一覧です。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "show" => Proc.new {return ["#{Blog.find_by(id: params[:id]).try(:title)} - にこにこ鍼灸整骨院", "#{"にこにこ鍼灸整骨院ブログ | 秋田県秋田市の整骨院グループ" + strip_tags(Blog.find_by(id: params[:id]).try(:content))[0, 39] + "..."}"]}
        },
        "reviews" => {
          "index" => Proc.new{ return ["患者様の声一覧 - にこにこ鍼灸整骨院 | 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院", "秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の患者様の声一覧です。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]},
          "show" => Proc.new {return ["#{Review.find_by(id: params[:id]).try(:title)} - にこにこ鍼灸整骨院", "#{"にこにこ鍼灸整骨院ブログ | 秋田県秋田市の整骨院グループ" + strip_tags(Review.find_by(id: params[:id]).try(:content))[0, 39] + "..."}"]}
        },
        "notifications" => {
          "show" => Proc.new {return ["お知らせ - にこにこ鍼灸整骨院", "#{Notification.find_by(id: params[:id]).try(:title)} - 秋田県秋田市で交通事故・腰痛・怪我に対応できる整骨院、にこにこ鍼灸整骨院の患者様の声一覧です。当院では地域の皆様の健康のため、肩こり・膝痛・外反母趾・肉離れ・捻挫・打撲・五十肩など幅広い治療メニューを揃えており、保険治療・自費著量どちらにも対応しております。"]}
        }
      }
    end

    h[c].try(:[], a).try(:call)
  end

  def store_type
    store = ""
    if params[:controller].include?("niconico")
      store = "niconico"
    elsif params[:controller].include?("sugawara")
      store = "sugawara"
    else
      store = "default"
    end
    store
  end
end

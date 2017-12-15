module ApplicationHelper
  def set_title_description
    c = params[:controller]
    a = params[:action]
    h = {
      "welcome" => {
        "index" => Proc.new{ return ["恋活・婚活レポート - おすすめ出会い系ランキング", "出会い系サイトって数が多くてどれが良いのか気になりますよね。しっかり「出会える」サイトを使えばセフレや彼女、結婚相手も見つけることができます。筆者が出会い系で100人以上のセフレを作った経験から、本当におすすめの出会い系4選をランキングでご紹介します。"]},
        "diagnosis" => Proc.new{ return ["恋活・婚活レポート - おすすめ出会い系ランキング", "出会い系サイトって数が多くてどれが良いのか気になりますよね。しっかり「出会える」サイトを使えばセフレや彼女、結婚相手も見つけることができます。筆者が出会い系で100人以上のセフレを作った経験から、本当におすすめの出会い系4選をランキングでご紹介します。"]},
        "traffic_accident" => Proc.new{ return ["恋活・婚活レポート - おすすめ出会い系ランキング", "出会い系サイトって数が多くてどれが良いのか気になりますよね。しっかり「出会える」サイトを使えばセフレや彼女、結婚相手も見つけることができます。筆者が出会い系で100人以上のセフレを作った経験から、本当におすすめの出会い系4選をランキングでご紹介します。"]},
        "recruitment" => Proc.new{ return ["恋活・婚活レポート - おすすめ出会い系ランキング", "出会い系サイトって数が多くてどれが良いのか気になりますよね。しっかり「出会える」サイトを使えばセフレや彼女、結婚相手も見つけることができます。筆者が出会い系で100人以上のセフレを作った経験から、本当におすすめの出会い系4選をランキングでご紹介します。"]},
        "about" => Proc.new{ return ["恋活・婚活レポート - おすすめ出会い系ランキング", "出会い系サイトって数が多くてどれが良いのか気になりますよね。しっかり「出会える」サイトを使えばセフレや彼女、結婚相手も見つけることができます。筆者が出会い系で100人以上のセフレを作った経験から、本当におすすめの出会い系4選をランキングでご紹介します。"]},
      },
      "blogs" => {
        "index" => Proc.new {
          c = Category.find_by(id: params[:category_id]).try(:name) if params[:category_id].present?
          return params[:category_id].present? ?
            ["#{c}の記事 - 恋活・婚活レポート", "恋活・婚活レポートの#{c}関連の記事です。#{c}についてのまとめや、詳しい記事を読むことができます。"] :
            ["記事一覧 - 恋活・婚活レポート", "恋活・婚活レポートの記事一覧です。"]
        },
        "show" => Proc.new {return ["#{Article.find_by(id: params[:id]).try(:title)} - 恋活・婚活レポート", "#{Article.find_by(id: params[:id]).try(:discription)}"]}
      },
      "reviews" => {
        "index" => Proc.new {
          c = Category.find_by(id: params[:category_id]).try(:name) if params[:category_id].present?
          return params[:category_id].present? ?
            ["#{c}の記事 - 恋活・婚活レポート", "恋活・婚活レポートの#{c}関連の記事です。#{c}についてのまとめや、詳しい記事を読むことができます。"] :
            ["記事一覧 - 恋活・婚活レポート", "恋活・婚活レポートの記事一覧です。"]
        },
        "show" => Proc.new {return ["#{Article.find_by(id: params[:id]).try(:title)} - 恋活・婚活レポート", "#{Article.find_by(id: params[:id]).try(:discription)}"]}
      },
      "notifications" => {
        "show" => Proc.new {return ["#{Article.find_by(id: params[:id]).try(:title)} - 恋活・婚活レポート", "#{Article.find_by(id: params[:id]).try(:discription)}"]}
      }
    }
    h[c].try(:[], a).try(:call)
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


videos = Video.create([
  { name: 'ディズニー公式YouTubeチャンネル', url: 'https://www.youtube.com/watch?v=cvj3-MZO9Tw', code: 'cvj3-MZO9Tw', title: '一緒に歌おう♪『アナと雪の女王』「Let It Go＜歌詞付Ver.＞」 松たか子', description: "The Frozen song, but in Japanaese.  Let's sing together! Whee.", views: 63172105, tags: 'music, animated', duration: 225, durationString: '3:45', votes: 82, percent: 89, language: 'japanese' }, 
  { name: 'AKB48', url: 'https://www.youtube.com/watch?v=iyn5uirg2j8', code: 'iyn5uirg2j8', title: '【MV】 10年桜 / AKB48 [公式]', description: 'AKB48 travels to the future.', views: 15388394, tags: 'music', duration: 463, durationString: '7:43', votes: 52, percent: 12, language: 'japanese' },
  { name: 'buritoraman', url: 'https://www.youtube.com/watch?v=AFtvJKMDxvY', code: 'AFtvJKMDxvY', title: 'ブリーフ＆トランクス　コンビニ', description: 'Who knew konbinis could inpire such artistry?', views: 1896742, tags: 'music, funny', duration: 205, durationString: '3:25', votes: 32, percent: 21, language: 'japanese' },
  { name: 'nachu777', url: 'https://www.youtube.com/watch?v=Vve3rOUOoZw', code: 'Vve3rOUOoZw', title: '超シュールアニメ「森の安藤」', description: 'The great Mr. Ando of the Woods', views: 4288268, tags: 'funny, animated', duration: 299, durationString: '4:59', votes: 49, percent: 45, language: 'japanese' },
  { name: 'SakuraSoTV', url: 'https://www.youtube.com/watch?v=elLWWzaQJFk', code: 'elLWWzaQJFk', title: '【黄文雄】 日本人とはこんなに違う中国人と韓国人[桜H24/10/19]', description: 'In the light of the Senkaku Islands disputes, a discussion on the differences between Japanese, Korean, and Chinese culture', views: 435616, tags: 'east asian politics, discussion', duration: 1232, durationString: '20:32', votes: 11, percent: 5, language: 'japanese' },
  { name: 'VICE Japan', url: 'https://www.youtube.com/watch?v=Adze5L8xFzU', code: 'Adze5L8xFzU', title: '『極道』第一回：右翼 - Gokudo Ep.1: The Right-Wing Connection', description: 'VICE Japan interviews Masaya Kudo, a Right-Wing activist and leader of his own "Uyoku Dantai", called "Nihon-no-Kai." He explains his philosophies and concerns regarding the Right-Wing movement today and their ties to the Yakuza.', views: 785288, tags: 'Japanese politics, documentary', duration: 1307, durationString: '21:47', votes: 28, percent: 12, language: 'japanese' },
  { name: '吉本興業チャンネル', url: 'https://www.youtube.com/watch?v=yQ5RkoLw8ks', code: 'yQ5RkoLw8ks', title: '人志松本の○○な話 誕生編～後期～', description: 'Mat-chan and some other Japanese comedians discuss some of their stories', views: 1413468, tags: 'funny, variety bangumi', duration: 664, durationString: '11:04', votes: 18, percent: 11, language: 'japanese' }
  ])
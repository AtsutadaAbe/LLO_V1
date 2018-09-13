//
//  StartViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/09.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var comment: UITextView!
    @IBAction func jumpPersonalInfo(_ sender: UIButton) {
        if (SettingViewController.datas["agree"] != nil){
            //すでに同意しているときはコードで個人情報設定画面へナビゲーション
            let nextView = self.storyboard?.instantiateViewController(
            withIdentifier: "PersonalInfoView") as! PersonalInfoViewController
            self.navigationController?.pushViewController(nextView, animated: true)
        } else {
            //まだ同意していないときはコードで同意画面へナビゲーション
            let nextView = self.storyboard?.instantiateViewController(
            withIdentifier: "AgreementView") as! AgreementViewController
            self.navigationController?.pushViewController(nextView, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     let comment = arc4random_uniform(10)
        if(comment == 0){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、今日は運動に関する豆知識。\n男性なら5回、女性なら3回ラジオ体操をするだけで一日に必要な最低運動量を満たすことができます。\n最近体重が気になりだした方、ダイエットをしている方、運動が嫌いな方はラジオ体操をやってみるといいかも?"
        }
        else if(comment == 1){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、今日は味噌に関する豆知識。\n味噌の本場、信州では「味噌の医者殺し。」ということわざがあるそうです。\n味噌は日本の代表的な発酵食品で、酵母菌やこうじ菌、乳酸菌を１kgあたり約１万個も含んでおり「味噌の医者殺し」や｢医者に金を払うよりも、みそ屋に払え」と言われるほど味噌の栄養価の高さが評価され、病気を防ぎ、健康を保つ薬としても重宝されていたわけです。"
        }
        else if(comment == 2){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、今日は牛乳に関する豆知識。\n牛乳にはカルシウムとともにＣＰＰ（カルシウムホスホペプチド）と呼ばれるカルシウムの吸収を促進する物質も含まれているので、カルシウムを含む食品の中でも特にカルシウムの摂取を効率よくできるそうです。\n牛乳に含まれているイライラを鎮めるもう一つの物質にトリプトファンがあります。\n必須アミノ酸のトリプトファンは神経のイライラを鎮める鎮静作用を持っていて、牛乳はトリプトファンを多く含む数少ない食品なのだそうです。\nしかも牛乳は液状なので消化酵素も作用しやすく分解されやすいため、体に吸収されやすいわけです。\nそのようなことから、イライラして寝つきにくい場合、牛乳を飲むことによって安眠することができるといわれています。\nこの場合、牛乳は温めて飲む方が良いようです。\nその理由は胃に温かい飲み物が入ると体全体がほのかに暖まり、神経も静まって、さらに消化酵素の分泌も促進されてタンパク質が早く分解し、トリプトファンの吸収も効率よく行なわれるというわけです。"
        }
        else if(comment == 3){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、今日は止まらないと困るしゃっくりに関する豆知識。\nしゃっくりが続くとツライもの。しゃっくりの止め方には様々な方法があります。例えば、ご飯を飲み込むとか、鼻をつまんでコプ一杯の水を飲むとか、人に驚かせてもらうなんてこともあります。これらはいずれもショック療法ですが、期待したほどの効果をあげないことがしばしばあります。\nしゃっくりを止める、もっとも効果的な方法は、実は砂糖が効くのです。\nまず大さじ一杯のグラニュー糖をすくい、そのままのどの奥に放り込んでしまいます。この時、舌の上にのせたり唾液で濡らしたりしないで乾いたまま飲み込むことがポイントです。\nこれでたいていのしゃっくりは止るものですが、もしも止らないようならば、何度か繰り返すと良いようです。\nできればグラニュー糖が良いようですが、手元に無ければ、普通の砂糖でも代用できるようです。"
        }
        else if(comment == 4){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、今日はタバコと体重に関する豆知識。\nタバコには空腹感を喪失させる作用があるのです。それはニコチンがアドレナリンの分泌を促し、血糖値が上げるためです。\nつまりタバコを吸うと空腹感がいやされるそうです。\nそのためタバコをやめると空腹感を強く感じることとなり、舌の味覚の麻痺も治るため、食事がとても美味しく感じられ、食べ過ぎることになってしまうようです。さらにタバコをやめると中性脂肪を燃焼する代謝スピードが落ちるそうです。\nニコチンによるアドレナリンの分泌でスピードが高まっていたのが、正常なスピードに戻ると脂肪の燃焼率が落ち、皮下脂肪が付きやすくなるというわけです。\n特に痩せの大食いだった人がタバコをやめるとイッキに太りだす場合が多いそうです。"
        }
        else if(comment == 5){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、今日は貧乏ゆすりに関する豆知識。\n貧乏ゆすりは、血行を良くするための生理現象の一種と考えられ、女性よりも筋肉量の多い男性に多く見られるものなのだとか。\n座っていると脚の血管が圧迫されて乳酸が溜まり、これを分解するために血流を促そうと貧乏ゆすりが起こるのだそうだそうです。\nある実験では貧乏ゆすりをすることで冷え性の改善が認められたそうです。\nまた、緊張しているときやイライラしているときに貧乏ゆすりをしてしまう理由は、そのリズミカルな刺激が精神を安定させる脳内物質、セロトニンの分泌を促すためと言われています。\n貧乏ゆすりという名前のせいで良いイメージのない貧乏ゆすりですが、血液の流れを良くし、さらに精神を安定させるといった効果をもたらすようです。"
        }
        else if(comment == 6){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、今日は暑さと汗に関する豆知識。\n猛烈な熱さの中にいると人間の体は、干からびるまで汗を流し続けるのでしょうか？ある程度、たっぷり汗をかくと、その後の汗の量は少なくなってしまいます。\n人間の体は常に水分を60％ほどに保つようにコントロール機能が働くので汗を出すのを止めてしまうのです。\nしかし、その後は体温上昇という困った事態が起きてきます。これが熱中症と言われる症状です。\nひどい時には気を失ったり、痙攣(けいれん)、重症を超えると死に至る事もあるほどです。昔はスポーツをしている最中に水を飲むとバテると言って、水を飲むことを禁止された事もありましたが、今考えれば、それはとんでもない危険な間違った教えだったのです。\n水分の補給を怠らず暑さがひどいときには休憩も十分にとるようにして熱中症には注意して過ごしましょう。"
        }
        else if(comment == 7){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、今日はボケ防止と足に関する豆知識。\n足は第二の心臓」という言葉があります。歩くことによって足の筋肉が下半身に滞りがちな血液の循環を活発にします。\n血液の循環が良くなれば脳にも新鮮な酸素がたくさん送り込まれて活性化するわけです。これが第二の心臓といわれるゆえんの様です。\n筋肉には大きく分けて相性筋（そうじょうきん）と緊張筋の二つがあります。相性筋は脳からの指令を受けて動作を起こす筋肉です。\n一方の緊張筋は、例えば立つという動作を「支える」「バランスを保つ」などの働きをしている筋肉で、筋肉の働きの信号を常に脳に送り出していて、この緊張筋を多く動かすことが脳をより活性化させることにつながるそうです。\n人間は歩くときに前に足を出す動作では相性筋を使いって、その前に出した足を支える動作では緊張筋を使っています。つまり一歩一歩、歩くことは毎回緊張筋を使うことになり、これが脳を大いに刺激してくれるのだそうです。"
        }
        else if(comment == 8){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、今日は塗り薬に関する豆知識。\nやけど用の軟膏を腕の皮膚に塗り、それが皮膚にしみこんでいく様子を、東京大学の研究グループが調べたそうです。つまり皮膚の表面に塗った軟膏が時間の経過とともにどれだけ減っていくかによって、皮膚の中にしみこんでいくのをとらえたものです。その実験結果によれば軟膏は初めはゆっくりとしみこんでいき、22分経過した頃からしみこむ量が急に多くなり、1時間後には99％がしみこんでしまったそうです。この実験結果から判断すると、例えばハンドクリームを塗った時には少なくとも1時間は手を洗ったりしない方が良いようです。"
        }
        else if(comment == 9){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、今日は玉ねぎに関する豆知識。\n血液をサラサラにしてくれると言われる玉ねぎですが、その効果を高めるコツがあります。\nその方法は、まず切るときは縦より横に切ります。理由は繊維に逆らって切る方が有効成分のトリスルフィド（硫化アリル）が増えやすいためです。\nまた、切った後、寒い地域なら１時間程、温暖地域であれば30分ほど水にさらして放置すると血液サラサラ効果がアップします。"
        }
        else if(comment == 10){
            self.comment.text = "今日も来てくれて、ありがとうございます。\nさて、10に関する豆知識。\nこのネタは工事中です"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

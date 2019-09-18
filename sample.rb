class Player
  def hand
    while true
      text = ["数字を入力してください","0:グー","1:チョキ","2:パー"]
      text.each do |order|
        puts order
      end
      @p_choice = gets.chomp
      # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
      if @p_choice == "0" || @p_choice == "1" || @p_choice == "2"
        return @p_choice.to_i
      else
        puts "0〜2の数字を入力してください。"
      end
    end
  end
end

class Enemy
  def hand
    @rand = rand(0..2)
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  end
    # if @rand == 0
    #   @e_choice = "グー"
    # elsif @rand == 1
    #   @e_choice = "チョキ"
    # elsif @rand == 2
    #   @e_choice = "パー"
    #   puts @e_choice
    # end
end

class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    judge = ( player_hand - enemy_hand + 3 ) % 3

    if enemy_hand == 0
      e_choice = "グー"
    elsif enemy_hand == 1
      e_choice = "チョキ"
    elsif enemy_hand == 2
      e_choice = "パー"
    end

    if judge == 2
      puts "相手の手は#{e_choice}です。あなたの勝ちです。"
      return exit;
    elsif judge == 1
      puts "相手の手は#{e_choice}です。あなたの負けです。"
      return exit;
    elsif judge == 0
      puts "相手の手は#{e_choice}です。あいこです。"
      return true;
    end
  end
end

player = Player.new
# ↑1.Playerクラスをnewメソッドでインスタンス化して変数playerに代入
# ↑2.Playerはクラス、playerはインスタンス
enemy = Enemy.new
janken = Janken.new
# 下記の記述で、ジャンケンメソッドが起動される

while janken.pon(player.hand, enemy.hand) do
  janken.pon(player.hand, enemy.hand)
end

#

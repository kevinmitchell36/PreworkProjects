class ArtGenerator

  def village
    puts <<-'EOF'
  ~         ~~          __
       _T      .,,.    ~--~ ^^
 ^^   // \                    ~
      ][O]    ^^      ,-~ ~
   /''-I_I         _II____
__/_  /   \ ______/ ''   /'\_,__
  | II--'''' \,--:--..,_/,.-{ },
; '/__\,.--';|   |[] .-.| O{ _ }
:' |  | []  -|   ''--:.;[,.'\,/
'  |[]|,.--'' '',   ''-,.    |
  ..    ..-''    ;       ''. 
    EOF
  end

  def inn
    puts <<-'EOF'
    .~~~~.
    i====i_
    |cccc|_)
    |cccc|   
    `-==-`
    EOF
  end

  def camp
    puts <<-'EOF'
           '______
           /     /\
          /     /  \
         /_____/----\_    (  
         "    "          ).  
       _ ___          o (:) o   
      (@))_))        o ~/~~\~ o   
                      o  o  o'
    EOF
  end

  def faerie_tree
    puts <<-'EOF'
   ` .{{}}}}}}.
    {{{{{{(`)}}}.
   {{{(`)}}}}}}}}}
  }}}}}}}}}{{(`){{{
  }}}}{{{{(`)}}{{{{
 {{{(`)}}}}}}}{}}}}}
{{{{{{{{(`)}}}}}}}}}}
{{{{{{{}{{{{(`)}}}}}}
 {{{{{(`)   {{{{(`)}'
  `""'" |   | "'"'`
  (`)  /     \
 ~~~~~~~~~~~~~~~~~~~

    EOF
  end

  def fire
    puts <<-'EOF'

      (  .      )
      )           (              )
            .  '   .   '  .  '  .
  (    , )       (.   )  (   ',    )
    .' ) ( . )    ,  ( ,     )   ( .
  ). , ( .   (  ) ( , ')  .' (  ,    )
  (_,) . ), ) _) _,')  (, ) '. )  ,. (' )
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    EOF
  end

  def villagers
    puts <<-'EOF'
    \ | /
    -- o --
     / | \
  _      _      _      _      _      _      _
\/'-'\/\/'-'\/\/'-'\/\/'-'\/\/'_'\/\/'-'\/\/'-'\/
 \_;_/  \_;_/  \_;_/  \_;_/  \_;_/  \_;_/  \_;_/
 / \    / \    / \    / \    / \    / \    / \

                                           
    EOF
  end

  def faeries
    puts <<-'EOF'
   '(\{\               (\{\               (\{\                (\{\
    { { \ ,~,          { { \,~,           { { \,~,            { { \,~,
   { {   \)))  *      { {   \))  *       { {   \))  *        { {   \))  *
    { {  (((  /        { {  ((( /         { {  ((( /          { {  ((( /
     {/{/; ,\/          {/{/) \/           {/{/) \/            {/{/) \/
        (( '               ((__--             ((__-               (( '
         \` \               \| (/             |/ (/               |/\|
         (/  \              (/ `)            (/  `)               (|(/
         `)  `\             `)               `)                   `)`)'

    EOF
  end
end


class StoryFlavor

  def begin
    puts "Dusk to darkness. The purpled sunset sky quickly turns to night. As thoughts of food and lodging creep into your mind you begin to look for a place to rest your head. Weary, hungry, and saddle sore you are eager to put today's travels behind you. You come across a small village; an inn would be nice, but camping leaves more gold in your purse... Do you enter? Choose [y]es or [n]"
  end

  def village_elder
    puts "You enter the town inn. As you sip on some warm cider a village elder approaches you. Without any exchange of pleasentries, she starts to tell you how the town has been attacked by evil faeries. She pleads for you to help her town rid themselves of this menace. Will you help the villagers? Choose [h]elp or [d]eny"
  end
  
  def help
    puts "Wanting the element of surpirse you wait no longer (the faeries can be cunning) so you and the villagers find the faerie tree..."
  end

  def no_help
    puts "Knowing all too well about the faeries' dark arts you decline to get involved. The next day the villagers glare at you as the faeries swarm the village..."
  end

  def villagers_approach
    puts "You wake from a restless night to see your campsite surrounded by villagers. They tell you how the faeries in the woods have been harassing them relentlessly. Will you help the villagers? Choose [h]elp or [d]eny"
  end

  def restless_night
    puts "Needing coin more than comfort you decide to make camp instead. As you begin to close your eyes and welcome the sandman, you hear a rustling in the thicket surrounding your camp. It probably just animals but it could be something much worse. Do you draw your sword or sleep it off? Choose [s]leep or [d]raw sword"
  end

  def faeries_approach
    puts "As your blade leaves its sheath faeries from the woods reveal themselves glowing against the night sky. They tell you that the villagers have been threating there sacred tree and ask for your help dealing with these ruffians. Will you help the faeries? Choose [y]es [n]o."
  end

  def alt_help
    puts "Knowing that faeries are possessed of great magic you decide to help them. The following morning you and the faeries swarm the village..."
  end


  def alt_no_help
    puts "Not wanting to get involved you decline to help. The followning day you decide to alert the villagers to the faeries' schemes. You watch as an angry mob forms to find the faerie tree..."
  end

  def burn_it
    puts "and burn it to the ground!!!!"
  end
end



class Choices
  def initialize(art, story)
    @art = art
    @story = story
  end

  def first_choice(path)
    puts "\e[H\e[2J"
    if path == ['y']
      puts @art.inn
      puts @story.village_elder
    elsif path == ['n']
      @art.camp
      @story.restless_night
    end
  end
  
  def second_choice(path)
    puts "\e[H\e[2J"
    if path == ['y', 'h']
      puts @art.faerie_tree
      puts @story.help
      sleep(3)
      puts "\e[H\e[2J"
      puts @art.fire
      puts @story.burn_it
    elsif path == ['y', 'd']
      puts @art.village
      puts @story.no_help
      sleep(3)
      puts "\e[H\e[2J"
      puts @art.fire
      puts @story.burn_it
    elsif path == ['n', 's']
      puts @art.villagers
      puts @story.villagers_approach
    elsif path == ['n', 'd']
      puts @art.faeries
      puts @story.faeries_approach
    end
  end

  def third_choice(path)
    puts "\e[H\e[2J"
    if path == ['n', 's', 'h']
      @art.faerie_tree
      @story.help
    elsif path == ['n', 's', 'd']
      @art.village
      @story.no_help
    elsif path == ['n', 'd', 'y']
      @art.village
      @story.alt_no_help
    elsif path == ['n', 'd', 'n']
      @art.faerie_tree
      @story.alt_help
    end
    sleep(3)
    puts "\e[H\e[2J"
    puts @art.fire
    puts @story.burn_it
    return false
  end

end


art = ArtGenerator.new
story = StoryFlavor.new
choice = Choices.new(art, story)


while true
  puts "\e[H\e[2J"
  art.village
  story.begin
  path = []
  selection_1 = gets.chomp 
  path << selection_1
  choice.first_choice(path)
  selection_2 = gets.chomp
  path << selection_2
  choice.second_choice(path)
  if path == ['y', 'h'] || path == ['y', 'd']
    break
  end
  selection_3 = gets.chomp
  path << selection_3
  choice.third_choice(path)
  break
end
# if path == ['y']
#   art.inn
#   story.village_elder
# elsif path == ['n']
#   art.camp
#   story.restless_night
# end

# second_choice = gets.chomp
# path << second_choice
# if path == ['y', 'h']
#   art.faerie_tree
#   story.help
# elsif path == ['y', 'd']
#   art.crops_burning
#   story.no_help
# end
# if path == ['n', 's']
#   art.villagers
#   story.villagers_approach
# end
# if path == ['n', 'd']
#   art.faeries
#   story.faeries_approach
# end

# third_choice = gets.chomp
# path << third_choice
# if path == ['n', 's', 'h']
#   art.faerie_tree
#   story.help
# elsif path == ['n', 's', 'd']
#   art.crops_burning
#   story.no_help
# end

# alt_third_choice = gets.chomp
# path << alt_third_choice 
# if path == ['n', 'd', 'y']
#   art.crops_burning
#   story.alt_no_help
# elsif path == ['n', 'd', 'n']
#   art.faerie_tree
#   story.alt_help
# end
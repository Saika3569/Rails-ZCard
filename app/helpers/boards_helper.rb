module BoardsHelper
  def board_title_css(board)
    "board-title board-title-#{board.state}"
  end

  def check?(obj, type)
    obj.send("may#{type}?") && policy(obj).send("#{type}?")
  end

  # board.may_hide? && policy(board).hide?
end

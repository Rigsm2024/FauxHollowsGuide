# app/controllers/block_controller.rb
class BlockController < ApplicationController
    def index
        @block_patterns = BlockPattern.all  # 全てのレコードを取得
        Rails.logger.debug "#{@block_patterns.inspect}"
        render json: @block_patterns.map { |pattern| pattern_to_json(pattern) } # JSON形式で返す
    end
    
    def show
      @block_pattern = BlockPattern.find(params[:id]) # 指定されたIDのレコードを取得
      render json: pattern_to_json(@block_pattern) # JSON形式で返す
    end
  
    private
  
    def pattern_to_json(pattern)
      {
        id: pattern.id,
        name: pattern.name,
        extra_info: generate_extra_info(pattern) # 任意の追加情報を生成するメソッド
      }
    end
  
    def generate_extra_info(pattern)
      "Additional info for #{pattern.name}" # 追加情報の生成ロジック
    end
  end
  
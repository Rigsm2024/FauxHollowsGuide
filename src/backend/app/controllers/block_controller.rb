# app/controllers/block_controller.rb
require_relative '../services/matrix_rotation'

class BlockController < ApplicationController
  def index
    @block_patterns = BlockPattern.all
    @block_positions = BlockPosition.all
    
    render json: create_response_json(@block_patterns, @block_positions)
  end
  
  def show
    @block_pattern = BlockPattern.find(params[:id]) # 指定されたIDのレコードを取得
    render json: pattern_to_json(@block_pattern) # JSON形式で返す
  end


  private

  def create_response_json(patterns, positions)
    groupeds = group_by_pattern(positions)
    
    expanded = groupeds.map do |grouped| expand_to_4_degrees(grouped) end
    expanded.flat_map { |e| e }
  end

  def group_by_pattern(positions)
    grouped_positions = positions.group_by { |bp| bp.block_pattern_id }

    result = grouped_positions.map do |pattern_id, positions| 
      { 
        pattern: pattern_id, 
        rotate: 0,
        items: positions.map { |bp| bp.to_json_with_category } 
      }
    end

    result
  end

  def expand_to_4_degrees(grouped)
    result = [grouped]

    [90, 180, 270].each do |deg|
      copied = Marshal.load(Marshal.dump(grouped))
      copied[:rotate] = deg 
      copied[:items].each do |item| 
        rotated_x, rotated_y = rotate_matrix(item[:x], item[:y], deg) 
        item[:x] = rotated_x 
        item[:y] = rotated_y
      end

      result << copied
    end

    result
  end
end
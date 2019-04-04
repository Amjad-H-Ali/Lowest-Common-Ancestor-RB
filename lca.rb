require_relative 'AtoT'

node = array_to_tree [3,11,5,2,6,17,4,7,9,13,21,14,8,19,1]

def LCA root, node1, node2
	# End of Tree has been reached
	if root == nil
		return nil;
	end
	# If the current node is the value we are looking for.
	if root[:value] == node1 or root[:value] == node2
		return root[:value]
	end

	# Traverse down the tree looking for the values or until end is reached
	left  = LCA root[:left], node1, node2
	right = LCA root[:right], node1, node2

	# Only way left and right to be true is if they are node1 and node2. So return the parent node
	if left and right
		return root[:value]
	end

	# Either return left, right, or nil
	return left ? left : right
end


p LCA node, 19, 21 # 3

p LCA node, 2, 9   # 2

p LCA node, 14, 8  # 17

p LCA node, 6, 2   # 11

p LCA node, 3, 5   # 3 

p LCA node, 19, 1  # 4


		

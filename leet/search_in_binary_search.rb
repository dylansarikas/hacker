def search_bst(root, val)
    if !root
        return []
    end

    if val > root.val
        return search_bst(root.right, val)
    elsif val < root.val
        return search_bst(root.left, val)
    else
        return root
    end
end
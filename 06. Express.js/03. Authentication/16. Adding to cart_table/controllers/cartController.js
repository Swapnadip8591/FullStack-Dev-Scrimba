import { getDBConnection } from '../db/db.js'

export async function addToCart(req, res) {
 const db = await getDBConnection()

/*
Challenge:

1. Write code to ensure that when a logged-in user clicks 'Add to Cart', the product is either added to their cart or its quantity increased if it’s already there, storing the data in the cart_items table. If successful, send the frontend this JSON: { message: 'Added to cart' }.

Ignore frontend console errors for now!

For testing, log in with:
Username: test
Password: test

Use logTable.js to verify success!

Loads of help in hint.md
*/
  const productId = parseInt(req.body.productId, 10)

  if (isNaN(productId)) {
    return res.status(400).json({ error: 'Invalid product ID'})
  }

  const userId = req.session.userId

  const existing = await db.get('SELECT * FROM cart_items WHERE user_id = ? AND product_id = ?', [userId, productId])

  if (existing) {
    await db.run('UPDATE cart_items SET quantity = quantity + 1 WHERE id = ?', [existing.id])
  } else {
    await db.run('INSERT INTO cart_items (user_id, product_id, quantity) VALUES (?, ?, 1)', [userId, productId])
  }

  res.json({ message: 'Added to cart' })
}

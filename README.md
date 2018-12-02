# MyTemplate

## クラス名の取得

```usage.swift
UIView.className //=> "UIView"
UILabel().className //=> "UILabel"
```



## UITableView

Cellの登録

```swift
tableView.register(cellType: MyCell.self)
tableView.register(cellTypes: [MyCell1.self, MyCell2.self])

let cell = tableView.dequeueReusableCell(with: MyCell.self, for: indexPath)
```



## UICollectionView

Cellの登録

```swift
collectionView.register(cellType: MyCell.self)
collectionView.register(cellTypes: [MyCell1.self, MyCell2.self])
let cell = collectionView.dequeueReusableCell(with: MyCell.self, for: indexPath)

collectionView.register(reusableViewType: MyReusableView.self)
collectionView.register(reusableViewTypes: [MyReusableView1.self, MyReusableView2.self])
let view = collectionView.dequeueReusableView(with: MyReusableView.self, for: indexPath)
```



## UIView

ViewをsuperViewと同じ大きさにする

```swift
superView.addSubview(view)
view.fillSuperview()
```



## UIColor

16進数でUIColorの設定

```swift
let color = UIColor(hex: 0xAABBCC)
```



## Array

配列で検索して削除

```swift
let array = ["foo", "bar"]
array.remove(element: "foo")
print(array) //=> ["bar"]
```



配列から同一の値を削除

```swift
let array = [1, 2, 3, 3, 2, 1, 4]
array.unify() // [1, 2, 3, 4]
```




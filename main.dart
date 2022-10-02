// Deck of Cards
import 'dart:io';

void main() {
  var deck = new Deck();

  // print all cards
  deck.printCards();

  // print cards with suit
  print("\n\n\nCards with suit");
  print("Enter suit: ");
  String? suit = stdin.readLineSync();
  print(deck.cardsWithSuits(suit!));

  // shuffle cards
  print("\n\n\nAfter Shuffling:");
  deck.shuffle();
  deck.printCards();
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades'];
    var ranks = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Jack',
      'Queen',
      'King'
    ];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank, suit);
        cards.add(card);
      }
    }
  }

  cardsWithSuits(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  // shuffle cards
  shuffle() {
    cards.shuffle();
  }

  // print all the cards in this deck
  printCards() {
    for (var card in cards) {
      print(card);
    }
  }
}

class Card {
  String suit;
  String rank;

  Card(this.rank, this.suit);

  toString() {
    return '$rank of $suit';
  }
}

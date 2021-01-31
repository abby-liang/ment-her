//
//  EnterChatViewController.swift
//  Uses MessageKit CocoaPods
//
//  Created by abby on 1/30/21.
//

import UIKit
import MessageKit

struct Sender: SenderType {
    var senderId: String
    var displayName: String
}

struct Message: MessageType {
    var sender: SenderType
    var messageId: String = ""
    var sentDate: Date
    var kind: MessageKind
}

class EnterChatViewController: MessagesViewController, MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
    
    // Users
    let currentUser = Sender(senderId: "self", displayName: "Sam Jackson")
    let otherUser = Sender(senderId: "other", displayName: "Rebecca Martin")
    
    var messages = [MessageType]() // = [ Messages ] for Database
    
    func currentSender() -> SenderType {
        return currentUser
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        // Number of Msgs
        return messages.count
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        messages.append(Message(sender: currentUser,
                                messageId: "1",
                                sentDate: Date().addingTimeInterval(-86400),
                                kind: .text("👋 Hi Hannah!")))
        
        messages.append(Message(sender: currentUser,
                                messageId: "2",
                                sentDate: Date().addingTimeInterval(-70000),
                                kind: .text("My name is Sam, and I was born in raised in Tennessee. I have a passion for helping people, especially in the medical field. ")))
        
        messages.append(Message(sender: currentUser,
                                messageId: "3",
                                sentDate: Date().addingTimeInterval(-60000),
                                kind: .text("In the future, I aspire to be a doctor. With you as my mentor, I hope to learn from your journey as a roboticist in the medical field at Duke, both in mental health and technical areas.")))
        
        messages.append(Message(sender: otherUser,
                                messageId: "4",
                                sentDate: Date().addingTimeInterval(-50000),
                                kind: .text("Hi Sam!")))
        
        messages.append(Message(sender: otherUser,
                                messageId: "5",
                                sentDate: Date().addingTimeInterval(-40000),
                                kind: .text("It's so nice to meet you. I'm happy to be your mentor! I will most definitely highlight work-life balance, and the importance of self-care.")))
        
        messages.append(Message(sender: otherUser,
                                messageId: "6",
                                sentDate: Date().addingTimeInterval(-30000),
                                kind: .text("Feel free to let me know whem you are free, and we can schedule a call!")))
        
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
    }
    

}

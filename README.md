# Welcome to ment-her!
This GitHub repo contains the code to the base of our iOS Swift app. Our project is mainly UI/UX Design, in which the prototype can be found [here](https://www.figma.com/proto/W0QHFMAIbS7CdnQD2wwAPi/Ment-Her?node-id=4%3A39&scaling=scale-down). 
Please try our prototyped and designed mobile app, as there are many functionalities that include scrolling, menu, chat, and interaction features.

## Inspiration
Empowering women and girls and achieving gender equality are crucial to creating inclusive, open and prosperous societies. Gender inequalities, however, persist in many countries so it is important that we find new ways of addressing this issue. 

In order to fight against the socially constructed gender biases, women have to swim against the system that requires more strength. Such strength comes from the process of empowerment and we believe that mentoring is a great tool to promote women empowerment.

We also created a section in the app called "take a break" in order to promote self-care activities, since self care tends to increase positive thinking and make us less susceptible to stress, depression, anxiety and other emotional health issues. Taking care of yourself is an important part of building resilience, or bouncing back from stress, trauma, and burnout.

In this sense, we developed Ment-Her, a safe space with mentors, self-care activities and a forum where women can talk about discrimination and participate in public discourse.
 
## What it does
Ment-Her provides a safe and comfortable environment for women to find mentors and practice self-care at the same time. The app matches women with a mentor to guide them through anything they might have. It can range from challenges during high school to even hobbies. If the user does not want to talk, they can also head over to the activities section to find a range of activities or workshops to work on. Women on the app can even talk to other users using the forum. 

Sections include:
* Registration & Login
    - Registration process to match users to mentors
    - Mentor search
* Chat
    - Chat with potential mentors: status turns from yellow to red or green once the mentor accepts or rejects the mentee’s request for mentorship
    - Chat with others from forum, workshops, etc. 
* Home Page
   - Find a Mentor 
   - Take a Break (also activities): current categories include art, food, misc, and sports with 4-7 subcategories in each. Scroll through the find one you enjoy, or view all (at bottom). 
   - Forum: Topics for female empowerment, such as #Coding, #FemaleEmpowerment, #SelfCare, #Colleges, and #Baking
* Calendar
    - View calendar for workshops, speakers, etc. 
* Profile

## How we built it
We built a fully-fledged high-fidelity prototype with Figma. This hi-fi prototype includes interactions, scrolling, frames, etc., following a certain user experience roadmap. The horizontal and vertical scrolling features are also activated, in which if you are on the “Take a Break” section, you can swipe left and right to view the subsections of each category as well as swipe all the way down to “View All”. 

Our mock-up Swift app is at its introductory stage, since in consideration of the time constraints, we wanted to focus on creating a full version of the UI/UX then transitioning to Swift. Nevertheless, this Swift app includes two tabs with Tab and Navigation View Controllers. The first tab is a rough outline of our “Activities”/Take a Break tab, where the app delineates each category of Art, Food, Miscellaneous, and Sports and expands to the subsections (the cells can be expanded and can be closed on tap). The second tab is a rough outline of our “Chat” feature. It uses Cocoapods MessageKit, UITableView features, and parent and child ViewControllers to showcase the # of people the user has chats with and the messages in each chat. We will continue developing this in the future. 

## Challenges we ran into
Due to the time restraint, we decided to focus on the layout and design of the app, understanding the user flow and functions prior to developing. But because we wanted to start some features through Swift, we started the code, but we will work on it more, having big plans for Ment-her (see “What’s next for Ment-her”)!

## Accomplishments that we're proud of
We are proud of the UI/UX since it looks pleasing to the eye and makes a full working prototype. We are also proud of all of our ideas, learning from workshops, and completing such a high caliber of prototyping in the given time, including the base of two features on Swift. 

## What we learned
We learned more about the functionalities of Figma; examples include sticky menus (keep position while scrolling), constraints, interaction between frames, and components and subframes to allow for horizontal and vertical scrolling, especially in the registration and ‘take a break’ categories. We made sure to include brand-identity design, as the effects of the color purple is to inspire and uplift. In Swift, we learned how to start incorporating our UI/UX to app format, use constraints in elements, create expandable content, and implement CocoaPods MessageKit library. As a whole, we learned how to work collaboratively and efficiently by creating a MVP within the given scope of this hackathon. 

## What's next for Ment-Her
- Further developing the iOS Swift app to a fully-functional app following the UI/UX design
- Connect “lessons”/tutorials with videos for each subsection in the activities page
- Implementing Flutter and Machine Learning algorithms to match mentor and mentees recommending the user to mentors near them
- Using Firebase to create a database of mentors and mentees
- Developing a computer web app along with it

## Built With
- Figma: Uses components, interactions, prototype features, horizontal/vertical scrolling, and more. (Try out the prototype!)
- Swift: Uses XCode’s UIKit and Cocoapods MessageKit

//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var storyNumber: Int = 0

    let stories: [Story] = [
        Story(
            title: "당신의 차는 휴대전화 수신이 되지 않는 한적한 구불구불한 길에서 타이어를 터뜨렸습니다. 당신은 히치하이크를 하기로 결정합니다. 녹슨 픽업트럭이 우르릉거리며 당신 옆에 멈춥니다. 영혼 없는 눈을 가진 챙이 넓은 모자를 쓴 남자가 당신을 위해 조수석 문을 열고 묻습니다. '태워줄까?'",
            choice1: "제가 타겠습니다. 도와주셔서 감사합니다!", choice1Destination: 2,
            choice2: "그가 살인자인지 먼저 물어보는 것이 좋습니다.", choice2Destination: 1
        ),
        Story(
            title: "질문에 동요하지 않고 천천히 고개를 끄덕인다.",
            choice1: "적어도 그는 정직합니다. 나는 올라갈 것이다.", choice1Destination: 2,
            choice2: "잠깐만요, 타이어 바꾸는 법을 알아요.", choice2Destination: 3
        ),
        Story(
            title: "운전을 시작하면 낯선 사람이 어머니와의 관계에 대해 이야기하기 시작합니다. 그는 점점 더 화를 낸다. 글로브박스를 열어달라고 합니다. 내부에는 피 묻은 칼, 잘린 두 손가락, Elton John의 카세트 테이프가 있습니다. 그는 글러브 박스에 손을 뻗는다.",
            choice1: "나는 엘튼 존을 사랑한다! 그에게 카세트테이프를 건넨다.", choice1Destination: 5,
            choice2: "그 아니면 나야! 당신은 칼을 들고 그를 찌릅니다.", choice2Destination: 4
        ),
        Story(
            title: "무엇? 그런 경찰! 대부분의 성인 연령대에서 교통사고가 사고사 사망의 두 번째 주요 원인이라는 사실을 알고 계셨습니까?",
            choice1: "엔", choice1Destination: 0,
            choice2: "딩", choice2Destination: 0
        ),
        Story(
            title: "가드레일을 부수고 아래의 들쭉날쭉한 바위를 향해 돌진하면서 당신이 타고 있는 차를 운전하는 누군가를 칼로 찌르는 미심쩍은 지혜에 대해 생각하게 됩니다.",
            choice1: "엔", choice1Destination: 0,
            choice2: "딩", choice2Destination: 0
        ),
        Story(
            title: "당신은 '오늘밤 사랑을 느낄 수 있나요? 그는 당신을 다음 마을에 내려줍니다. 당신이 가기 전에 그는 시체를 버릴 좋은 장소를 아느냐고 묻습니다. 당신은 '부두를 시도해 보세요.'라고 대답합니다.",
            choice1: "엔", choice1Destination: 0,
            choice2: "딩", choice2Destination: 0
        )
    ]

    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }

    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }

    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }

    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]

        guard userChoice == currentStory.choice1 else {
            storyNumber = currentStory.choice2Destination
            return
        }
        storyNumber = currentStory.choice1Destination
    }
}

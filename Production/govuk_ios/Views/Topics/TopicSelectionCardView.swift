import SwiftUI
import GovKitUI

struct TopicSelectionCardView: View {
    @ObservedObject var viewModel: TopicSelectionCardViewModel

    var body: some View {
        HStack(spacing: 16) {
<<<<<<< HEAD
            Image(viewModel.iconName).scaledToFit()
=======
            Image(viewModel.iconName)
                .scaledToFit()
>>>>>>> main
                .frame(width: 40, height: 40)
            Text(viewModel.title)
                .font(.govUK.bodySemibold)
                .foregroundStyle(Color(viewModel.titleColor))
            Spacer()
        }
        .padding(16)
        .background(Color(viewModel.backgroundColor))
        .roundedBorder(borderColor: .clear)
        .onTapGesture {
            viewModel.isOn.toggle()
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("\(viewModel.title). \(viewModel.accessibilitySelectedState)")
        .accessibilityAddTraits(.isButton)
    }
}

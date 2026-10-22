import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mobile-menu"
export default class extends Controller {
  static targets = ["menu", "openIcon", "closeIcon", "button"]

  toggle() {
    const isExpanded =
      this.buttonTarget.getAttribute("aria-expanded") === "true"

    this.buttonTarget.setAttribute("aria-expanded", String(!isExpanded))
    this.buttonTarget.setAttribute(
      "aria-label",
      isExpanded ? "メニューを開く" : "メニューを閉じる"
    )

    this.menuTarget.classList.toggle("hidden", isExpanded)
    this.openIconTarget.classList.toggle("hidden", !isExpanded)
    this.closeIconTarget.classList.toggle("hidden", isExpanded)
  }
}

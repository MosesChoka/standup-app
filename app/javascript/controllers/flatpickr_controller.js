import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        super.connect()
    }

    change(selectedDates, _dateStr, _instance) {
        window.Turbo.visit(`/dates/${selectedDates[0].toISOString().substring(0,10)}`)
    }
}
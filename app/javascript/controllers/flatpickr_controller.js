import Flatpickr from "stimulus-flatpickr"

export default class extends Flatpickr {
    connect() {
        super.connect()
    }

    change(selectedDates, _dateStr, _instance) {
        window.Turbo.visit(`/dates/${ _dateStr }`)
    }
}


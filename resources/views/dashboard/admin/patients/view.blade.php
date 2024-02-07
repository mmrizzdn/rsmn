<div class="modal" tabindex="-1" id="showModal{{ $patient->id }}" role="dialog"
    aria-labelledby="showModalLabel{{ $patient->id }}" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Detail Pasien</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p class="detail-item">
                    <strong>Nama Pasien:</strong><br>{{ $patient->name }}
                </p>
                <p class="detail-item">
                    <strong>Nomor Antrian:</strong><br>{{ $patient->queue }}
                </p>
                <p class="detail-item">
                    <strong>Tanggal Masuk:</strong><br>{{ $patient->date }}
                </p>
                <p class="detail-item">
                    <strong>Poli:</strong><br>{{ $patient->polyclinic }}
                </p>
                <p class="detail-item">
                    <strong>Dokter</strong><br>{{ $patient->doctor }}
                </p>
                <p class="detail-item">
                    <strong>Jenis Pendaftaran:</strong><br>{{ $patient->type }}
                </p>
                <p class="detail-item">
                    <strong>Waktu:</strong><br>{{ $patient->time }}
                </p>
                <p class="detail-item">
                    <strong>Keluhan:</strong><br>{{ $patient->complain }}
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

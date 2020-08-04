import QtQuick 2.0
import QtQuick.Particles 2.0

ParticleSystem {
    id: particleSystem

    Emitter {
        id: emitter
        width: parent.width
        emitRate: 1
        maximumEmitted: 5
        lifeSpan: 10000
        size: 64
        velocity: PointDirection { y: 100 }
    }

    ImageParticle {
        source:
    }
}

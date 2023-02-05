---
title: Space Effects 101 and Basic Setup
description: >
  Space sound effects like reverberation and delay are commonly used in music production to add depth and atmosphere to tracks. Reverb simulates the reflections of sound in a physical space, while delay involves repeating a sound at a later time to create an echo effect. These effects can help bring a sense of space and texture to a song. In this article, we'll explore the technical and creative aspects of using reverb and delay in music production.
yt_video:
genre:
  - all
stage:
  - mixing
instrument:
  - all
level:
  - beginner
---
## The Holy War
Both reverberation and delay can be added to a sound recording or audio signal through the use of an `insert` effect or an `auxiliary` (aux) effect.
An insert effect is similar to how you use it with the guitar: you insert it into the signal chain. Usually, there is a dry/wet knob allowing you to set the amount of the effect. It works the same way in a digital audio workstation (DAW). To apply an insert effect, you would insert it into the channel strip for the audio track you want to process. The effect is applied to the entire track and you can adjust its settings individually.
An aux effect, on the other hand, is a type of effect that is not applied directly to a specific audio track. Instead, it is applied to an auxiliary channel, which can be routed to one or more tracks in the mixing desk, or in the DAW. This allows you to apply the effect to multiple tracks at once, rather than having to insert it into the channel strip for each individual track.
In summary, the main difference between applying reverberation via insert and via aux is the level of control you have over the effect and the number of tracks it can be applied to. Insert effects are applied to individual tracks, while aux effects are applied to multiple tracks through the use of an auxiliary channel.

### When to use `insert`
Insert is mainly used in the Sound Design stage. It gives you better control of the effect, and you can combine it with other effects while having no impact on other sounds or tracks in your project. Be careful applying space effects at the Recording stage because it's almost impossible to remove them from the sound later. If you are recording voice or an instruments with the microphone, your room is adding reverberation to the sound - this is why we are using sound treatment in the recording room.

### When to use `aux`
Aux is mainly used at the Mixing stage. If you have ten instruments `sent` to the same Aux channel with one Reverb effect applied - they will sound very naturally as they are "in the same space". However, you are not limited to have only one Aux. In modern projects you will see four or more effects assigned to different Aux channels.

## Basic setup for the Mixing stage (using `aux`)
- An average project requires 4-5 aux channels for Reverb: Room 0.5-1s, Spring, Plate, Dark/Bright Hall. This will cover most of your needs to setup the space and place there all your instruments.
- You might need 2-3 channels for Delay: Slap ~80ms, 1/8th, 1/16th, 1/8th dotted
- Make sure all effects channels are created in stereo.
- Create a bus called `ALL_RETURNS` and send all effects there. On this bus you need the following effects:
  - High-pass filter from ~80-120Hz to remove unneeded low-end rumble.
  - Mid/side EQ in case you need to reduce the mid part of the sound or boost the sides to enhance the stereo image.
  - Compressor with side-chain from the Kick.
  - Dynamic EQ with side-chain from the Vocals.
- You won't need them all in every project, but it's a good practice to have a project template with all effects added.
- A good place to start is to apply Room and Hall effects first and continue from there.


## Advanced techniques (separate chips are pending)
You can also consider applying more advanced techniques while working with Aux effects:
- Automating effect gain, e.g. reducing it in the quiet parts and increasing in more epic parts like at the end of a bridge or solo
- Apply ducking/sidechain from the lead instruments to remove mud
- Applying [Brauerizing]({% link _chips/brauerizing.md %}) to the `ALL_RETURNS` bus

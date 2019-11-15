package com.ifengyu.intercom.ui.imui.ui.chat.media;

import com.ifengyu.im.imservice.model.AudioAttachment;
import com.ifengyu.im.imservice.model.MessageEntity;

public class AudioMessagePlayable implements Playable {
    private MessageEntity message;

    public MessageEntity getMessage() {
        return this.message;
    }

    public AudioMessagePlayable(MessageEntity messageEntity) {
        this.message = messageEntity;
    }

    public long getDuration() {
        return ((AudioAttachment) this.message.getAttachment()).getDuration();
    }

    public String getPath() {
        return ((AudioAttachment) this.message.getAttachment()).getUrl();
    }

    public boolean isAudioEqual(Playable playable) {
        if (AudioMessagePlayable.class.isInstance(playable)) {
            return this.message.isTheSame(((AudioMessagePlayable) playable).getMessage());
        }
        return false;
    }
}

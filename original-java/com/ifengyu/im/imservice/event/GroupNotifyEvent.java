package com.ifengyu.im.imservice.event;

import com.ifengyu.im.imservice.entity.ApplyNotify;
import com.ifengyu.im.imservice.entity.InviteNotify;

public class GroupNotifyEvent {
    private ApplyNotify mApplyNotify;
    private Event mEvent;
    private InviteNotify mInvitedNotify;

    public enum Event {
        INVITED_JOIN_NOTIFY,
        APPLY_JOIN_NOTIFY,
        AGREE_APPLY_NOTIFY,
        REJECT_APPLY_NOTIFY,
        AGREE_INVITE_NOTIFY,
        REJECT_INVITE_NOTIFY
    }

    public GroupNotifyEvent(InviteNotify inviteNotify, Event event) {
        this.mInvitedNotify = inviteNotify;
        this.mEvent = event;
    }

    public GroupNotifyEvent(ApplyNotify applyNotify, Event event) {
        this.mApplyNotify = applyNotify;
        this.mEvent = event;
    }

    public Event getEvent() {
        return this.mEvent;
    }

    public void setEvent(Event event) {
        this.mEvent = event;
    }

    public InviteNotify getInvitedNotify() {
        return this.mInvitedNotify;
    }

    public void setInvitedNotify(InviteNotify inviteNotify) {
        this.mInvitedNotify = inviteNotify;
    }

    public ApplyNotify getApplyNotify() {
        return this.mApplyNotify;
    }

    public void setApplyNotify(ApplyNotify applyNotify) {
        this.mApplyNotify = applyNotify;
    }
}

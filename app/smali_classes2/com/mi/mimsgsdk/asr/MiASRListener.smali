.class public interface abstract Lcom/mi/mimsgsdk/asr/MiASRListener;
.super Ljava/lang/Object;
.source "MiASRListener.java"


# virtual methods
.method public abstract onBeginOfSpeech()V
.end method

.method public abstract onBufferReceived(Lcom/mi/mimsgsdk/asr/BytesWrapper;)V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onEvent(ILandroid/os/Bundle;)V
.end method

.method public abstract onPartialResults(Landroid/os/Bundle;)V
.end method

.method public abstract onReadyForSpeech(Landroid/os/Bundle;)V
.end method

.method public abstract onRecordFinished(Ljava/lang/String;J)V
.end method

.method public abstract onResults(Landroid/os/Bundle;)V
.end method

.method public abstract onRmsChanged(F)V
.end method

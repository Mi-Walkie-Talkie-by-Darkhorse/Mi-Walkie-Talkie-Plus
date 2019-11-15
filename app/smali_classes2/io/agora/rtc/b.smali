.class public Lio/agora/rtc/b;
.super Ljava/lang/Object;
.source "PublisherConfiguration.java"


# instance fields
.field private a:Lorg/json/JSONObject;


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/b;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/agora/rtc/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;
.super Ljava/lang/Object;
.source "DefaultSpdySettingsFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    }
.end annotation


# instance fields
.field private clear:Z

.field private final settingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    return-void
.end method

.method private appendSettings(Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->getSettings()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    const-string v3, "--> "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (persist value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersist()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; persisted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersisted()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getSettings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearPreviouslyPersistedSettings()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->clear:Z

    return v0
.end method

.method public getIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->getIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->getValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPersistValue(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersist()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersisted(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersisted()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSet(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public persistValue(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->isPersistValue(I)Z

    move-result v0

    return v0
.end method

.method public removeValue(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setClearPreviouslyPersistedSettings(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->clear:Z

    return-void
.end method

.method public setPersistValue(IZ)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersist(Z)V

    :cond_0
    return-void
.end method

.method public setPersisted(IZ)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersisted(Z)V

    :cond_0
    return-void
.end method

.method public setValue(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->setValue(IIZZ)V

    return-void
.end method

.method public setValue(IIZZ)V
    .locals 3

    if-lez p1, :cond_0

    const v0, 0xffffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ID is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setValue(I)V

    invoke-virtual {v0, p3}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersist(Z)V

    invoke-virtual {v0, p4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersisted(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-direct {v2, p2, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;-><init>(IZZ)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->appendSettings(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

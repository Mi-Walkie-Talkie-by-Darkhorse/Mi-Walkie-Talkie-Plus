.class public interface abstract Lcom/xiaomi/clientreport/processor/IEventProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/clientreport/processor/c;
.implements Lcom/xiaomi/clientreport/processor/d;


# virtual methods
.method public abstract bytesToString([B)Ljava/lang/String;
.end method

.method public abstract setEventMap(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/clientreport/data/a;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract stringToBytes(Ljava/lang/String;)[B
.end method

.class Lcom/shanlitech/et/web/im/model/IMessage$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "IMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/web/im/model/IMessage;->msgResourceJsonToList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shanlitech/et/web/im/model/IMessage;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/web/im/model/IMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage$1;->this$0:Lcom/shanlitech/et/web/im/model/IMessage;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

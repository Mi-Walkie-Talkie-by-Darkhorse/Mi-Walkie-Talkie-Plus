.class public final enum Lcom/shanlitech/et/web/im/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/web/im/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/shanlitech/et/web/im/MessageType;

.field public static final enum b:Lcom/shanlitech/et/web/im/MessageType;

.field public static final enum c:Lcom/shanlitech/et/web/im/MessageType;

.field public static final enum d:Lcom/shanlitech/et/web/im/MessageType;

.field public static final enum e:Lcom/shanlitech/et/web/im/MessageType;

.field public static final enum f:Lcom/shanlitech/et/web/im/MessageType;

.field private static final synthetic g:[Lcom/shanlitech/et/web/im/MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/im/MessageType;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shanlitech/et/web/im/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shanlitech/et/web/im/MessageType;->a:Lcom/shanlitech/et/web/im/MessageType;

    new-instance v1, Lcom/shanlitech/et/web/im/MessageType;

    const-string v3, "TXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shanlitech/et/web/im/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shanlitech/et/web/im/MessageType;->b:Lcom/shanlitech/et/web/im/MessageType;

    new-instance v3, Lcom/shanlitech/et/web/im/MessageType;

    const-string v5, "PIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shanlitech/et/web/im/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shanlitech/et/web/im/MessageType;->c:Lcom/shanlitech/et/web/im/MessageType;

    new-instance v5, Lcom/shanlitech/et/web/im/MessageType;

    const-string v7, "AUDIO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shanlitech/et/web/im/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shanlitech/et/web/im/MessageType;->d:Lcom/shanlitech/et/web/im/MessageType;

    new-instance v7, Lcom/shanlitech/et/web/im/MessageType;

    const-string v9, "VIDEO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/shanlitech/et/web/im/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shanlitech/et/web/im/MessageType;->e:Lcom/shanlitech/et/web/im/MessageType;

    new-instance v9, Lcom/shanlitech/et/web/im/MessageType;

    const-string v11, "LOC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/shanlitech/et/web/im/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shanlitech/et/web/im/MessageType;->f:Lcom/shanlitech/et/web/im/MessageType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/shanlitech/et/web/im/MessageType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcom/shanlitech/et/web/im/MessageType;->g:[Lcom/shanlitech/et/web/im/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/shanlitech/et/web/im/MessageType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/shanlitech/et/web/im/MessageType;->a:Lcom/shanlitech/et/web/im/MessageType;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/shanlitech/et/web/im/MessageType;->f:Lcom/shanlitech/et/web/im/MessageType;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/shanlitech/et/web/im/MessageType;->e:Lcom/shanlitech/et/web/im/MessageType;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/shanlitech/et/web/im/MessageType;->d:Lcom/shanlitech/et/web/im/MessageType;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/shanlitech/et/web/im/MessageType;->c:Lcom/shanlitech/et/web/im/MessageType;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/shanlitech/et/web/im/MessageType;->b:Lcom/shanlitech/et/web/im/MessageType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/web/im/MessageType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/web/im/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/web/im/MessageType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/web/im/MessageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/im/MessageType;->g:[Lcom/shanlitech/et/web/im/MessageType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/web/im/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/web/im/MessageType;

    return-object v0
.end method

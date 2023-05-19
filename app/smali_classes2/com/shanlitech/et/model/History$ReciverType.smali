.class final enum Lcom/shanlitech/et/model/History$ReciverType;
.super Ljava/lang/Enum;
.source "History.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/model/History;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReciverType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/model/History$ReciverType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/model/History$ReciverType;

.field public static final enum GROUP:Lcom/shanlitech/et/model/History$ReciverType;

.field public static final enum MEMBER:Lcom/shanlitech/et/model/History$ReciverType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/History$ReciverType;

    const-string v1, "GROUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/model/History$ReciverType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shanlitech/et/model/History$ReciverType;->GROUP:Lcom/shanlitech/et/model/History$ReciverType;

    new-instance v1, Lcom/shanlitech/et/model/History$ReciverType;

    const-string v3, "MEMBER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shanlitech/et/model/History$ReciverType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shanlitech/et/model/History$ReciverType;->MEMBER:Lcom/shanlitech/et/model/History$ReciverType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shanlitech/et/model/History$ReciverType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/shanlitech/et/model/History$ReciverType;->$VALUES:[Lcom/shanlitech/et/model/History$ReciverType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/model/History$ReciverType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/model/History$ReciverType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/model/History$ReciverType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/model/History$ReciverType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/model/History$ReciverType;->$VALUES:[Lcom/shanlitech/et/model/History$ReciverType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/model/History$ReciverType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/model/History$ReciverType;

    return-object v0
.end method

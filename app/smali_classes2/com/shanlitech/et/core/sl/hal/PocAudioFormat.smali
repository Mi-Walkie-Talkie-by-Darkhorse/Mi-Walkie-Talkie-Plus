.class public final enum Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;
.super Ljava/lang/Enum;
.source "PocAudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

.field public static final enum c:Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

.field public static final enum d:Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

.field private static final synthetic e:[Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    const-string v1, "K8"

    const/4 v2, 0x0

    const/16 v3, 0x1f40

    invoke-direct {v0, v1, v2, v3}, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;->b:Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    new-instance v1, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    const-string v3, "K16"

    const/4 v4, 0x1

    const/16 v5, 0x3e80

    invoke-direct {v1, v3, v4, v5}, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;->c:Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    new-instance v3, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    const-string v5, "K48"

    const/4 v6, 0x2

    const v7, 0xbb80

    invoke-direct {v3, v5, v6, v7}, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;->d:Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;->e:[Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

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

    .line 2
    iput p3, p0, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;->a:I

    .line 3
    div-int/lit16 p3, p3, 0x3e8

    div-int/lit8 p3, p3, 0x8

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;->e:[Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    invoke-virtual {v0}, [Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/core/sl/hal/PocAudioFormat;->a:I

    return v0
.end method

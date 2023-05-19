.class public final enum Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;
.super Ljava/lang/Enum;
.source "CircleProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

.field public static final enum b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

.field public static final enum c:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

.field public static final enum d:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

.field private static final synthetic e:[Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    const-string v3, "UPDATING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    new-instance v3, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    const-string v5, "FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    new-instance v5, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    const-string v7, "SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->e:[Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->e:[Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    return-object v0
.end method

.class public final enum Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;
.super Ljava/lang/Enum;
.source "LabelChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/notice/event/LabelChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

.field public static final enum Add:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

.field public static final enum Delete:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

.field public static final enum None:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

.field public static final enum Update:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    const-string v1, "Delete"

    const/4 v2, 0x0

    const-string v3, "tob-label-del"

    invoke-direct {v0, v1, v2, v3}, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->Delete:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    new-instance v1, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    const-string v3, "Add"

    const/4 v4, 0x1

    const-string v5, "tob-label-add"

    invoke-direct {v1, v3, v4, v5}, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->Add:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    new-instance v3, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    const-string v5, "Update"

    const/4 v6, 0x2

    const-string v7, "tob-label-upd"

    invoke-direct {v3, v5, v6, v7}, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->Update:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    new-instance v5, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    const-string v7, "None"

    const/4 v8, 0x3

    const-string v9, ""

    invoke-direct {v5, v7, v8, v9}, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->None:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->$VALUES:[Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "tob-label-upd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "tob-label-del"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "tob-label-add"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2
    sget-object p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->None:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    return-object p0

    .line 3
    :pswitch_0
    sget-object p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->Update:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->Delete:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->Add:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x358fc942 -> :sswitch_2
        0x358fd4ac -> :sswitch_1
        0x359015ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->$VALUES:[Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;->value:Ljava/lang/String;

    return-object v0
.end method

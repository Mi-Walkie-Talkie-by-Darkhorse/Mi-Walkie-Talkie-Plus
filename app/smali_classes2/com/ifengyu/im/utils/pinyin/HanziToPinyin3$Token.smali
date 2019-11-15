.class public Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final LATIN:I = 0x1

.field public static final PINYIN:I = 0x2

.field public static final SEPARATOR:Ljava/lang/String; = " "

.field public static final UNKNOWN:I = 0x3


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;->type:I

    iput-object p2, p0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;->source:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;->target:Ljava/lang/String;

    return-void
.end method

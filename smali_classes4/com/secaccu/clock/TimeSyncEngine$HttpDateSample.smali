.class final Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
.super Ljava/lang/Object;
.source "TimeSyncEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/secaccu/clock/TimeSyncEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HttpDateSample"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J;\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;",
        "",
        "t0Mono",
        "",
        "t1Mono",
        "dateUtcMs",
        "rttMs",
        "",
        "coarseOffsetMs",
        "(JJJDD)V",
        "getCoarseOffsetMs",
        "()D",
        "getDateUtcMs",
        "()J",
        "getRttMs",
        "getT0Mono",
        "getT1Mono",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final coarseOffsetMs:D

.field private final dateUtcMs:J

.field private final rttMs:D

.field private final t0Mono:J

.field private final t1Mono:J


# direct methods
.method public constructor <init>(JJJDD)V
    .locals 0
    .param p1, "t0Mono"    # J
    .param p3, "t1Mono"    # J
    .param p5, "dateUtcMs"    # J
    .param p7, "rttMs"    # D
    .param p9, "coarseOffsetMs"    # D

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-wide p1, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t0Mono:J

    .line 177
    iput-wide p3, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t1Mono:J

    .line 178
    iput-wide p5, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->dateUtcMs:J

    .line 179
    iput-wide p7, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->rttMs:D

    .line 180
    iput-wide p9, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->coarseOffsetMs:D

    .line 175
    return-void
.end method

.method public static synthetic copy$default(Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;JJJDDILjava/lang/Object;)Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    .locals 11

    move-object v0, p0

    and-int/lit8 v1, p11, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t0Mono:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p11, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t1Mono:J

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p11, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->dateUtcMs:J

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p5

    :goto_2
    and-int/lit8 v7, p11, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->rttMs:D

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p7

    :goto_3
    and-int/lit8 v9, p11, 0x10

    if-eqz v9, :cond_4

    iget-wide v9, v0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->coarseOffsetMs:D

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p9

    :goto_4
    move-wide p1, v1

    move-wide p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-wide/from16 p9, v9

    invoke-virtual/range {p0 .. p10}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->copy(JJJDD)Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t0Mono:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t1Mono:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->dateUtcMs:J

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->rttMs:D

    return-wide v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->coarseOffsetMs:D

    return-wide v0
.end method

.method public final copy(JJJDD)Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    .locals 12

    new-instance v11, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    move-object v0, v11

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;-><init>(JJJDD)V

    return-object v11
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    iget-wide v3, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t0Mono:J

    iget-wide v5, v1, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t0Mono:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t1Mono:J

    iget-wide v5, v1, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t1Mono:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->dateUtcMs:J

    iget-wide v5, v1, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->dateUtcMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->rttMs:D

    iget-wide v5, v1, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->rttMs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->coarseOffsetMs:D

    iget-wide v5, v1, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->coarseOffsetMs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCoarseOffsetMs()D
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->coarseOffsetMs:D

    return-wide v0
.end method

.method public final getDateUtcMs()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->dateUtcMs:J

    return-wide v0
.end method

.method public final getRttMs()D
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->rttMs:D

    return-wide v0
.end method

.method public final getT0Mono()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t0Mono:J

    return-wide v0
.end method

.method public final getT1Mono()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t1Mono:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t0Mono:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t1Mono:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->dateUtcMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->rttMs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->coarseOffsetMs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-wide v0, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t0Mono:J

    iget-wide v2, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->t1Mono:J

    iget-wide v4, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->dateUtcMs:J

    iget-wide v6, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->rttMs:D

    iget-wide v8, p0, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->coarseOffsetMs:D

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HttpDateSample(t0Mono="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", t1Mono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dateUtcMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rttMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coarseOffsetMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

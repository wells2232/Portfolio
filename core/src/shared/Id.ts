export default class Id {
  private constructor() {
    // This class is not meant to be instantiated
  }

  static generate(): string {
    const p1 = Math.random().toString(36).substr(2, 9);
    const p2 = Math.random().toString(36).substr(2, 9);
    const p3 = Math.random().toString(36).substr(2, 9);
    return `${p1}-${p2}-${p3}`;
  }
}
